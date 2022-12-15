**free

ctl-opt dftactgrp(*no);

dcl-pi P4368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2836.rpgleinc'
/copy 'qrpgleref/P2856.rpgleinc'
/copy 'qrpgleref/P4310.rpgleinc'

dcl-ds theTable extname('T898') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T898 LIMIT 1;

theCharVar = 'Hello from P4368';
dsply theCharVar;
P2836();
P2856();
P4310();
return;