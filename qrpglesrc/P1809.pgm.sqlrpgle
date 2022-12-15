**free

ctl-opt dftactgrp(*no);

dcl-pi P1809;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P922.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'

dcl-ds T85 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T85 FROM T85 LIMIT 1;

theCharVar = 'Hello from P1809';
dsply theCharVar;
P330();
P922();
P331();
return;