**free

ctl-opt dftactgrp(*no);

dcl-pi P3605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2717.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'
/copy 'qrpgleref/P2944.rpgleinc'

dcl-ds T1026 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1026 FROM T1026 LIMIT 1;

theCharVar = 'Hello from P3605';
dsply theCharVar;
P2717();
P723();
P2944();
return;