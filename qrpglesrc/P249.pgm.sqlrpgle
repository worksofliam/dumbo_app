**free

ctl-opt dftactgrp(*no);

dcl-pi P249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds T614 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T614 FROM T614 LIMIT 1;

theCharVar = 'Hello from P249';
dsply theCharVar;
P35();
P76();
P38();
return;