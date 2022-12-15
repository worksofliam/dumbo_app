**free

ctl-opt dftactgrp(*no);

dcl-pi P2580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2300.rpgleinc'
/copy 'qrpgleref/P2412.rpgleinc'
/copy 'qrpgleref/P1154.rpgleinc'

dcl-ds T1730 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1730 FROM T1730 LIMIT 1;

theCharVar = 'Hello from P2580';
dsply theCharVar;
P2300();
P2412();
P1154();
return;