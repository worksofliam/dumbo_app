**free

ctl-opt dftactgrp(*no);

dcl-pi P2316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1295.rpgleinc'
/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P1781.rpgleinc'

dcl-ds T1183 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1183 FROM T1183 LIMIT 1;

theCharVar = 'Hello from P2316';
dsply theCharVar;
P1295();
P429();
P1781();
return;