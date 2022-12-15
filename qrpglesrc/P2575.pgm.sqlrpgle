**free

ctl-opt dftactgrp(*no);

dcl-pi P2575;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2347.rpgleinc'
/copy 'qrpgleref/P1769.rpgleinc'
/copy 'qrpgleref/P1821.rpgleinc'

dcl-ds T75 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T75 FROM T75 LIMIT 1;

theCharVar = 'Hello from P2575';
dsply theCharVar;
P2347();
P1769();
P1821();
return;