**free

ctl-opt dftactgrp(*no);

dcl-pi P1439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P644.rpgleinc'
/copy 'qrpgleref/P1050.rpgleinc'

dcl-ds T92 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T92 FROM T92 LIMIT 1;

theCharVar = 'Hello from P1439';
dsply theCharVar;
P198();
P644();
P1050();
return;