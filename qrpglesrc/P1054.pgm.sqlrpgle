**free

ctl-opt dftactgrp(*no);

dcl-pi P1054;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P925.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P995.rpgleinc'

dcl-ds T521 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T521 FROM T521 LIMIT 1;

theCharVar = 'Hello from P1054';
dsply theCharVar;
P925();
P313();
P995();
return;