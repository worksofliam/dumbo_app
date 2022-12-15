**free

ctl-opt dftactgrp(*no);

dcl-pi P5268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4392.rpgleinc'
/copy 'qrpgleref/P5060.rpgleinc'
/copy 'qrpgleref/P1102.rpgleinc'

dcl-ds T1535 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1535 FROM T1535 LIMIT 1;

theCharVar = 'Hello from P5268';
dsply theCharVar;
P4392();
P5060();
P1102();
return;