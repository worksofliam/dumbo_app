**free

ctl-opt dftactgrp(*no);

dcl-pi P160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds T156 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T156 FROM T156 LIMIT 1;

theCharVar = 'Hello from P160';
dsply theCharVar;
P132();
P7();
P80();
return;