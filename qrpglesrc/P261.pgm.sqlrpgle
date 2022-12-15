**free

ctl-opt dftactgrp(*no);

dcl-pi P261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'

dcl-ds T149 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T149 FROM T149 LIMIT 1;

theCharVar = 'Hello from P261';
dsply theCharVar;
P155();
P160();
P184();
return;