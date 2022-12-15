**free

ctl-opt dftactgrp(*no);

dcl-pi P450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'

dcl-ds T649 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T649 FROM T649 LIMIT 1;

theCharVar = 'Hello from P450';
dsply theCharVar;
P427();
P313();
P156();
return;