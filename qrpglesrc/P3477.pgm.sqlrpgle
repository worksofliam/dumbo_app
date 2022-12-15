**free

ctl-opt dftactgrp(*no);

dcl-pi P3477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3232.rpgleinc'
/copy 'qrpgleref/P1561.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds T935 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T935 FROM T935 LIMIT 1;

theCharVar = 'Hello from P3477';
dsply theCharVar;
P3232();
P1561();
P169();
return;