**free

ctl-opt dftactgrp(*no);

dcl-pi P945;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P773.rpgleinc'

dcl-ds T236 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T236 FROM T236 LIMIT 1;

theCharVar = 'Hello from P945';
dsply theCharVar;
P420();
P483();
P773();
return;