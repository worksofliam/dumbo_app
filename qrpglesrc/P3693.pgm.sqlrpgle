**free

ctl-opt dftactgrp(*no);

dcl-pi P3693;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P1884.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'

dcl-ds T1073 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1073 FROM T1073 LIMIT 1;

theCharVar = 'Hello from P3693';
dsply theCharVar;
P12();
P1884();
P802();
return;