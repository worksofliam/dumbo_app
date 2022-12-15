**free

ctl-opt dftactgrp(*no);

dcl-pi P827;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P432.rpgleinc'
/copy 'qrpgleref/P777.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds T975 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T975 FROM T975 LIMIT 1;

theCharVar = 'Hello from P827';
dsply theCharVar;
P432();
P777();
P198();
return;