**free

ctl-opt dftactgrp(*no);

dcl-pi P2861;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2755.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds theTable extname('T739') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T739 LIMIT 1;

theCharVar = 'Hello from P2861';
dsply theCharVar;
P2755();
P70();
P295();
return;