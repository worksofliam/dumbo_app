**free

ctl-opt dftactgrp(*no);

dcl-pi P848;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'

dcl-ds T730 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T730 FROM T730 LIMIT 1;

theCharVar = 'Hello from P848';
dsply theCharVar;
P346();
P321();
P76();
return;