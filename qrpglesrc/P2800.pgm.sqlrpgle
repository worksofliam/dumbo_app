**free

ctl-opt dftactgrp(*no);

dcl-pi P2800;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2091.rpgleinc'
/copy 'qrpgleref/P680.rpgleinc'
/copy 'qrpgleref/P448.rpgleinc'

dcl-ds T1610 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1610 FROM T1610 LIMIT 1;

theCharVar = 'Hello from P2800';
dsply theCharVar;
P2091();
P680();
P448();
return;