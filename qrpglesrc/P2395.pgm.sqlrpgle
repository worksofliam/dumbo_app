**free

ctl-opt dftactgrp(*no);

dcl-pi P2395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P1569.rpgleinc'
/copy 'qrpgleref/P1887.rpgleinc'

dcl-ds T658 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T658 FROM T658 LIMIT 1;

theCharVar = 'Hello from P2395';
dsply theCharVar;
P242();
P1569();
P1887();
return;