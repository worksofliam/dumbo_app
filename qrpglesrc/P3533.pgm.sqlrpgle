**free

ctl-opt dftactgrp(*no);

dcl-pi P3533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P1869.rpgleinc'
/copy 'qrpgleref/P2632.rpgleinc'

dcl-ds T70 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T70 FROM T70 LIMIT 1;

theCharVar = 'Hello from P3533';
dsply theCharVar;
P82();
P1869();
P2632();
return;