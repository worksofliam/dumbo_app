**free

ctl-opt dftactgrp(*no);

dcl-pi P2926;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2006.rpgleinc'
/copy 'qrpgleref/P1866.rpgleinc'
/copy 'qrpgleref/P2733.rpgleinc'

dcl-ds T378 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T378 FROM T378 LIMIT 1;

theCharVar = 'Hello from P2926';
dsply theCharVar;
P2006();
P1866();
P2733();
return;