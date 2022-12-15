**free

ctl-opt dftactgrp(*no);

dcl-pi P1053;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P530.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'
/copy 'qrpgleref/P819.rpgleinc'

dcl-ds T796 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T796 FROM T796 LIMIT 1;

theCharVar = 'Hello from P1053';
dsply theCharVar;
P530();
P838();
P819();
return;