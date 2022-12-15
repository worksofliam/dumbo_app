**free

ctl-opt dftactgrp(*no);

dcl-pi P3680;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P3417.rpgleinc'
/copy 'qrpgleref/P2538.rpgleinc'

dcl-ds T481 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T481 FROM T481 LIMIT 1;

theCharVar = 'Hello from P3680';
dsply theCharVar;
P58();
P3417();
P2538();
return;