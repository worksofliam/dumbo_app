**free

ctl-opt dftactgrp(*no);

dcl-pi P172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T61 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T61 FROM T61 LIMIT 1;

theCharVar = 'Hello from P172';
dsply theCharVar;
P69();
P144();
P25();
return;