**free

ctl-opt dftactgrp(*no);

dcl-pi P3264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2320.rpgleinc'
/copy 'qrpgleref/P2563.rpgleinc'
/copy 'qrpgleref/P1229.rpgleinc'

dcl-ds T1441 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1441 FROM T1441 LIMIT 1;

theCharVar = 'Hello from P3264';
dsply theCharVar;
P2320();
P2563();
P1229();
return;