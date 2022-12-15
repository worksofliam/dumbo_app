**free

ctl-opt dftactgrp(*no);

dcl-pi P5557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3441.rpgleinc'
/copy 'qrpgleref/P1560.rpgleinc'
/copy 'qrpgleref/P5206.rpgleinc'

dcl-ds T1824 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1824 FROM T1824 LIMIT 1;

theCharVar = 'Hello from P5557';
dsply theCharVar;
P3441();
P1560();
P5206();
return;