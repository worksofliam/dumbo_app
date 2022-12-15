**free

ctl-opt dftactgrp(*no);

dcl-pi P5254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3876.rpgleinc'
/copy 'qrpgleref/P4690.rpgleinc'
/copy 'qrpgleref/P1462.rpgleinc'

dcl-ds T647 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T647 FROM T647 LIMIT 1;

theCharVar = 'Hello from P5254';
dsply theCharVar;
P3876();
P4690();
P1462();
return;