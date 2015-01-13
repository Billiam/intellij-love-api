BASE_URL = 'https://love2d.org/wiki/'

function getDocumentationUrl(name)
  return BASE_URL .. name
end

function getQuickNavigateDocumentation(name)
  return '[LOVE]\n' .. SIGNATURES[name]
end


-- begin signatures
SIGNATURES = {
  <SIGNATURE_CONTENT>
}