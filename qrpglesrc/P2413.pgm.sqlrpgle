**free

ctl-opt dftactgrp(*no);

dcl-pi P2413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P1262.rpgleinc'
/copy 'qrpgleref/P398.rpgleinc'

dcl-ds T85 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T85 FROM T85 LIMIT 1;

theCharVar = 'Hello from P2413';
dsply theCharVar;
P268();
P1262();
P398();
return;