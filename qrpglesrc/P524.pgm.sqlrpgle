**free

ctl-opt dftactgrp(*no);

dcl-pi P524;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds theTable extname('T815') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T815 LIMIT 1;

theCharVar = 'Hello from P524';
dsply theCharVar;
P278();
P377();
P299();
return;