**free

ctl-opt dftactgrp(*no);

dcl-pi P314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds T9 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T9 FROM T9 LIMIT 1;

theCharVar = 'Hello from P314';
dsply theCharVar;
P227();
P174();
P80();
return;