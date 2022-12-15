**free

ctl-opt dftactgrp(*no);

dcl-pi P1805;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P868.rpgleinc'
/copy 'qrpgleref/P1644.rpgleinc'
/copy 'qrpgleref/P1212.rpgleinc'

dcl-ds T1394 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1394 FROM T1394 LIMIT 1;

theCharVar = 'Hello from P1805';
dsply theCharVar;
P868();
P1644();
P1212();
return;