**free

ctl-opt dftactgrp(*no);

dcl-pi P917;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T118') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T118 LIMIT 1;

theCharVar = 'Hello from P917';
dsply theCharVar;
P113();
P263();
P31();
return;