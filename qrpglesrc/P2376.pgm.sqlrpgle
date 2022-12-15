**free

ctl-opt dftactgrp(*no);

dcl-pi P2376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P986.rpgleinc'
/copy 'qrpgleref/P1175.rpgleinc'
/copy 'qrpgleref/P1329.rpgleinc'

dcl-ds T231 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T231 FROM T231 LIMIT 1;

theCharVar = 'Hello from P2376';
dsply theCharVar;
P986();
P1175();
P1329();
return;