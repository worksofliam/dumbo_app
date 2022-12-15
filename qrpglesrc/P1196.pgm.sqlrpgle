**free

ctl-opt dftactgrp(*no);

dcl-pi P1196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'

dcl-ds T443 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T443 FROM T443 LIMIT 1;

theCharVar = 'Hello from P1196';
dsply theCharVar;
P24();
P344();
return;