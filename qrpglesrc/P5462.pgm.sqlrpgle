**free

ctl-opt dftactgrp(*no);

dcl-pi P5462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1085.rpgleinc'
/copy 'qrpgleref/P590.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'

dcl-ds T1355 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1355 FROM T1355 LIMIT 1;

theCharVar = 'Hello from P5462';
dsply theCharVar;
P1085();
P590();
P57();
return;