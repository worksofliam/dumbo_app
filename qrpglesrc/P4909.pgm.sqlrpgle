**free

ctl-opt dftactgrp(*no);

dcl-pi P4909;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3446.rpgleinc'
/copy 'qrpgleref/P2228.rpgleinc'
/copy 'qrpgleref/P3485.rpgleinc'

dcl-ds T812 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T812 FROM T812 LIMIT 1;

theCharVar = 'Hello from P4909';
dsply theCharVar;
P3446();
P2228();
P3485();
return;