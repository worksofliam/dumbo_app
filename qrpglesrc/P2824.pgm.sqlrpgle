**free

ctl-opt dftactgrp(*no);

dcl-pi P2824;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2347.rpgleinc'
/copy 'qrpgleref/P1473.rpgleinc'
/copy 'qrpgleref/P2395.rpgleinc'

dcl-ds T121 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T121 FROM T121 LIMIT 1;

theCharVar = 'Hello from P2824';
dsply theCharVar;
P2347();
P1473();
P2395();
return;