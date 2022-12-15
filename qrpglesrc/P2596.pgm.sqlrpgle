**free

ctl-opt dftactgrp(*no);

dcl-pi P2596;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1050.rpgleinc'
/copy 'qrpgleref/P892.rpgleinc'
/copy 'qrpgleref/P1647.rpgleinc'

dcl-ds T117 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T117 FROM T117 LIMIT 1;

theCharVar = 'Hello from P2596';
dsply theCharVar;
P1050();
P892();
P1647();
return;