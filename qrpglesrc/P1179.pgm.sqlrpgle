**free

ctl-opt dftactgrp(*no);

dcl-pi P1179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P559.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P760.rpgleinc'

dcl-ds T887 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T887 FROM T887 LIMIT 1;

theCharVar = 'Hello from P1179';
dsply theCharVar;
P559();
P5();
P760();
return;