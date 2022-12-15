**free

ctl-opt dftactgrp(*no);

dcl-pi P115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds T2 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T2 FROM T2 LIMIT 1;

theCharVar = 'Hello from P115';
dsply theCharVar;
P67();
P103();
P39();
return;