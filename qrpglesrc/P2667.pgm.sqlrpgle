**free

ctl-opt dftactgrp(*no);

dcl-pi P2667;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1724.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P2560.rpgleinc'

dcl-ds T70 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T70 FROM T70 LIMIT 1;

theCharVar = 'Hello from P2667';
dsply theCharVar;
P1724();
P132();
P2560();
return;