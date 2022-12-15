**free

ctl-opt dftactgrp(*no);

dcl-pi P4033;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2628.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P1040.rpgleinc'

dcl-ds T790 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T790 FROM T790 LIMIT 1;

theCharVar = 'Hello from P4033';
dsply theCharVar;
P2628();
P163();
P1040();
return;