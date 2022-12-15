**free

ctl-opt dftactgrp(*no);

dcl-pi P170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds T1869 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1869 FROM T1869 LIMIT 1;

theCharVar = 'Hello from P170';
dsply theCharVar;
P142();
P76();
P29();
return;