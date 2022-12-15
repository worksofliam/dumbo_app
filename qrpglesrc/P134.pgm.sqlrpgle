**free

ctl-opt dftactgrp(*no);

dcl-pi P134;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds T415 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T415 FROM T415 LIMIT 1;

theCharVar = 'Hello from P134';
dsply theCharVar;
P98();
P12();
P123();
return;