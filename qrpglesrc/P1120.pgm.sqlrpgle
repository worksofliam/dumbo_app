**free

ctl-opt dftactgrp(*no);

dcl-pi P1120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'

dcl-ds T1209 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1209 FROM T1209 LIMIT 1;

theCharVar = 'Hello from P1120';
dsply theCharVar;
P297();
P589();
P548();
return;