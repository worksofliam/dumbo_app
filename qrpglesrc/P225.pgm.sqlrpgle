**free

ctl-opt dftactgrp(*no);

dcl-pi P225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds T227 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T227 FROM T227 LIMIT 1;

theCharVar = 'Hello from P225';
dsply theCharVar;
P3();
P36();
P187();
return;