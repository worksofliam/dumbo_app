**free

ctl-opt dftactgrp(*no);

dcl-pi P2986;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2384.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P1990.rpgleinc'

dcl-ds T491 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T491 FROM T491 LIMIT 1;

theCharVar = 'Hello from P2986';
dsply theCharVar;
P2384();
P739();
P1990();
return;