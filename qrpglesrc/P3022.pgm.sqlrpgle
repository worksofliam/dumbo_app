**free

ctl-opt dftactgrp(*no);

dcl-pi P3022;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P571.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'

dcl-ds T1770 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1770 FROM T1770 LIMIT 1;

theCharVar = 'Hello from P3022';
dsply theCharVar;
P571();
P495();
P488();
return;