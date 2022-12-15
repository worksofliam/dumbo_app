**free

ctl-opt dftactgrp(*no);

dcl-pi P3538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P719.rpgleinc'
/copy 'qrpgleref/P1012.rpgleinc'

dcl-ds T1246 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1246 FROM T1246 LIMIT 1;

theCharVar = 'Hello from P3538';
dsply theCharVar;
P427();
P719();
P1012();
return;