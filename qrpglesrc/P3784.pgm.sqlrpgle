**free

ctl-opt dftactgrp(*no);

dcl-pi P3784;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1489.rpgleinc'
/copy 'qrpgleref/P3322.rpgleinc'
/copy 'qrpgleref/P3688.rpgleinc'

dcl-ds T1394 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1394 FROM T1394 LIMIT 1;

theCharVar = 'Hello from P3784';
dsply theCharVar;
P1489();
P3322();
P3688();
return;