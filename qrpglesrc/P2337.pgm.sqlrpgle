**free

ctl-opt dftactgrp(*no);

dcl-pi P2337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P1831.rpgleinc'

dcl-ds T176 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T176 FROM T176 LIMIT 1;

theCharVar = 'Hello from P2337';
dsply theCharVar;
P1251();
P12();
P1831();
return;