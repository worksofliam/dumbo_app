**free

ctl-opt dftactgrp(*no);

dcl-pi P3171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1615.rpgleinc'
/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds T1229 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1229 FROM T1229 LIMIT 1;

theCharVar = 'Hello from P3171';
dsply theCharVar;
P1615();
P627();
P69();
return;