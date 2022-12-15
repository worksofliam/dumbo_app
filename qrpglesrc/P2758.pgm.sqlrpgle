**free

ctl-opt dftactgrp(*no);

dcl-pi P2758;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P2669.rpgleinc'
/copy 'qrpgleref/P1676.rpgleinc'

dcl-ds T323 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T323 FROM T323 LIMIT 1;

theCharVar = 'Hello from P2758';
dsply theCharVar;
P133();
P2669();
P1676();
return;