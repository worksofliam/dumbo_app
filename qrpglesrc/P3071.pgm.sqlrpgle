**free

ctl-opt dftactgrp(*no);

dcl-pi P3071;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2590.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P1084.rpgleinc'

dcl-ds T323 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T323 FROM T323 LIMIT 1;

theCharVar = 'Hello from P3071';
dsply theCharVar;
P2590();
P169();
P1084();
return;