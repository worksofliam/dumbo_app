**free

ctl-opt dftactgrp(*no);

dcl-pi P2776;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1225.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P1667.rpgleinc'

dcl-ds T7 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T7 FROM T7 LIMIT 1;

theCharVar = 'Hello from P2776';
dsply theCharVar;
P1225();
P445();
P1667();
return;