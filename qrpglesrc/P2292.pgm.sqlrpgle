**free

ctl-opt dftactgrp(*no);

dcl-pi P2292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1241.rpgleinc'
/copy 'qrpgleref/P2142.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'

dcl-ds T732 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T732 FROM T732 LIMIT 1;

theCharVar = 'Hello from P2292';
dsply theCharVar;
P1241();
P2142();
P851();
return;