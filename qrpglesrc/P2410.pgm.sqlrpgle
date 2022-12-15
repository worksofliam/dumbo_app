**free

ctl-opt dftactgrp(*no);

dcl-pi P2410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'
/copy 'qrpgleref/P1208.rpgleinc'

dcl-ds T908 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T908 FROM T908 LIMIT 1;

theCharVar = 'Hello from P2410';
dsply theCharVar;
P17();
P239();
P1208();
return;